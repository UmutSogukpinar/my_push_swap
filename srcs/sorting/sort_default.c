/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_default.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: umut <umut@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/03 23:16:50 by umut              #+#    #+#             */
/*   Updated: 2025/01/04 00:36:21 by umut             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "utils.h"

void	sort_default(t_list **stack_a, t_list **stack_b)
{
	t_way	*opt;
	int		is_problem;

	opt = init_optimum_struc();
	if (!opt)
		shut_program(stack_a, stack_b);
	stack_b_setup(stack_a, stack_b);
	while (ft_lstsize(stack_a) > 3)
	{
		is_problem = update_way(opt, stack_a, stack_b);
		if (is_problem != 0)
			shut_program(stack_a, stack_b);
		
	}
}
