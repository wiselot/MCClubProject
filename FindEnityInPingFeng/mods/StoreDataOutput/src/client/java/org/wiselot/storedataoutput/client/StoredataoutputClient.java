package org.wiselot.storedataoutput.client;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.client.MinecraftClient;
import net.minecraft.item.ItemStack;
import net.minecraft.nbt.NbtCompound;
import net.minecraft.scoreboard.ScoreboardObjective;
import net.minecraft.scoreboard.ScoreboardPlayerScore;
import net.minecraft.server.MinecraftServer;
import net.minecraft.text.Text;
import net.minecraft.util.math.BlockPos;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import static net.minecraft.server.command.CommandManager.*;

public class StoredataoutputClient implements ClientModInitializer {

    private final String outFile = MinecraftClient.getInstance().runDirectory.toString()+"\\output.csv";

    private final String scoreBoardScore = "zjutmclub.scorediamod";
    private final String scoreBoardMinute = "zjutmclub.minute";
    private final String scoreBoardSecond = "zjutmclub.second";

    private final BlockPos lectureBlockPos = new BlockPos(-254,0,-125);

    private static final int wholeSecond = 5*60;

    private int outputFileStatus = -1;

    private String playerInputName = null;

    private @Nullable List<Integer> getScoreBoardData(@NotNull MinecraftServer minecraftServer, String name){
        ScoreboardObjective scoreboardObjective = minecraftServer.getScoreboard().getObjective(name);
        if(scoreboardObjective==null)   return null;
        Collection<ScoreboardPlayerScore> scores = minecraftServer.getScoreboard().getAllPlayerScores(scoreboardObjective);
        List<Integer> list = new ArrayList<>();
        for (ScoreboardPlayerScore obj : scores) {
            list.add(obj.getScore());
        }
        return list;
    }

    @Override
    public void onInitializeClient() {
        CommandRegistrationCallback.EVENT.register((dispatcher, registryAccess, environment) -> dispatcher.register(literal("getData")
                .executes(context -> {
                    try {
                        for(int i = 0; i< Objects.requireNonNull(context.getSource().getPlayer()).getInventory().size(); i++){
                            ItemStack itemStack = context.getSource().getPlayer().getInventory().getStack(i);
                            NbtCompound nbt = itemStack.getNbt();
                            if(nbt!=null){
                                System.out.println(nbt);
                                playerInputName = nbt.getString("title");
                            }
                        }
                    }catch (NullPointerException e){
                        context.getSource().sendFeedback(Text.literal("名字记录失败捏,手动写一下把(悲!"),false);
                        return 1;
                    }
                    return 0;

                })));

        CommandRegistrationCallback.EVENT.register((dispatcher, registryAccess, environment) -> dispatcher.register(literal("storeData")
                .executes(context -> {
                    System.out.println("Start store data");
                    //context.getSource().sendFeedback(Text.literal("开始记录"), false);
                    MinecraftServer server = context.getSource().getServer();
                    /*
                     * 表格包括
                     * 玩家名,记录时间,总分,用时
                     */

                    try {
                        if(!new File(outFile).exists()){
                            outputFileStatus = 0;
                            try {
                                new File(outFile).createNewFile();
                            } catch (IOException e) {
                                System.out.println("输出文件创建失败");
                                return 1;
                            }
                        }
                        else{
                            outputFileStatus = 1;
                        }

                        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        List<Integer> score = getScoreBoardData(server,scoreBoardScore);
                        List<Integer> minute = getScoreBoardData(server,scoreBoardMinute);
                        List<Integer> second = getScoreBoardData(server,scoreBoardSecond);

                        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(outFile,true));

                        if(outputFileStatus==0)
                            bufferedWriter.write("玩家名,计分时间,总成绩,总用时\r\n");
                        bufferedWriter.write(
                                    (playerInputName==null?"null":playerInputName) +
                                        "," + formatter.format(new Date()) +
                                        "," + (score==null ? "null":score.get(0).toString()) +
                                        "," + (wholeSecond-(minute==null?wholeSecond/60:minute.get(0))*60-(second==null?wholeSecond%60:second.get(0)))
                                        + "\r\n"
                        );
                        bufferedWriter.flush();
                        bufferedWriter.close();
                        System.out.println("获取成功");
                        context.getSource().sendFeedback(Text.literal("记录完成!"),false);
                        return 0;

                    } catch (IOException e) {
                        System.out.println("获取玩家数据失败");
                        context.getSource().sendFeedback(Text.literal("记录失败!"),false);
                        return 1;
                    }
                })));
    }
}
