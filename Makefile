# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ycurbill <ycurbill@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/06 14:35:08 by ycurbill          #+#    #+#              #
#    Updated: 2023/03/07 13:58:40 by ycurbill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: ${NAME}

${NAME} : build up

build:
	docker-compose -f ./srcs/docker-compose.yml build

up:
	docker-compose -f ./srcs/docker-compose.yml up -d --force-recreate

down:
	docker-compose -f ./srcs/docker-compose.yml down -v

clean:
	docker image prune -a --force

.PHONY: all