(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6272595199843262747663175105117261409759521484375p763 {+ 2824925740466008 763 (7.89484e+229)}
; Y = -1.3492426187575679019658991819596849381923675537109375p362 {- 1572848927698479 362 (-1.2675e+109)}
; 1.6272595199843262747663175105117261409759521484375p763 M -1.3492426187575679019658991819596849381923675537109375p362 == 1.6272595199843262747663175105117261409759521484375p763
; [HW: 1.6272595199843262747663175105117261409759521484375p763] 

; mpf : + 2824925740466008 763
; mpfd: + 2824925740466008 763 (7.89484e+229) class: Pos. norm. non-zero
; hwf : + 2824925740466008 763 (7.89484e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111010 #b1010000010010100000101000111010001101111111101011000)))
(assert (= y (fp #b1 #b10101101001 #b0101100101100111111101101101100111101110111000101111)))
(assert (= r (fp #b0 #b11011111010 #b1010000010010100000101000111010001101111111101011000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
