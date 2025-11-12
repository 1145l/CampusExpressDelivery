package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.mapper")
public class SpringbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootApplication.class, args);
        System.out.println("\n================================ 个人项目声明 =================================");
        System.out.println("|                                                                       |");
        System.out.println("|  项目名称：[在此处填写你的项目名称]                                      |");
        System.out.println("|  学    校：绵阳城市学院                                                |");
        System.out.println("|  学    院：现代技术学院                                                |");
        System.out.println("|  专    业：计算机科学与技术                                            |");
        System.out.println("|  班    级：计科B2218                                                   |");
        System.out.println("|  姓    名：蒋宏扬                                                      |");
        System.out.println("|  学    号：2022590655                                                 |");
        System.out.println("|  指导老师：魏阳                                                        |");
        System.out.println("|                                                                       |");
        System.out.println("|  本项目代码为本人在指导老师指导下独立完成，除特别注明外，不包含其他人   |");
        System.out.println("|  已经发表或撰写过的研究成果。本项目仅用于课程学习、毕业设计或学术交流   |");
        System.out.println("|  等合法用途。未经本人及指导老师同意，禁止任何个人或组织以任何形式复制、 |");
        System.out.println("|  传播或用于商业目的。                                                  |");
        System.out.println("|                                                                       |");
        System.out.println("================================ 个人项目声明 =================================");
    }

}
