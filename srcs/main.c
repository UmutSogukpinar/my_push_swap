/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: usogukpi <usogukpi@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/07 11:55:18 by umut              #+#    #+#             */
/*   Updated: 2025/01/17 17:56:55 by usogukpi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "sort.h"
#include "ft_printf.h"

int	main(int arg_number, char **args)
{
	t_sort	*main;

	main = init_sort_struct();
	if (!main)
		shut_program_error(main);
	if (arg_number <= 1)
	{
		ft_printf("%s\n", args[0]);
		shut_program_default(main);
	}
	utilized_main(main, args, arg_number);
	check_duplicate(main);
	init_index_value(main);
	if (!is_sorted(main -> stack_a))
		sort(main);
	shut_program_default(main);
	return (0);
}
