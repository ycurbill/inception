# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ycurbill <ycurbill@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/06 14:35:08 by ycurbill          #+#    #+#              #
#    Updated: 2023/03/06 15:12:15 by ycurbill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: ${NAME}

${NAME} : build run

build:
	docker-compose -f ./srcs/docker-compose.yml up -d

run:

.PHONY: all