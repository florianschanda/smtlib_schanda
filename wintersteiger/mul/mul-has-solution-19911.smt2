(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.136099817239016207537360969581641256809234619140625p714 {+ 612939086202826 714 (9.79114e+214)}
; Y = 1.0149450852983701309995012707076966762542724609375p283 {+ 67306680580760 283 (1.57736e+085)}
; 1.136099817239016207537360969581641256809234619140625p714 * 1.0149450852983701309995012707076966762542724609375p283 == 1.1530789259151159598104641190730035305023193359375p997
; [HW: 1.1530789259151159598104641190730035305023193359375p997] 

; mpf : + 689406193709592 997
; mpfd: + 689406193709592 997 (1.54442e+300) class: Pos. norm. non-zero
; hwf : + 689406193709592 997 (1.54442e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001001 #b0010001011010111011100000000100000001000011111001010)))
(assert (= y (fp #b0 #b10100011010 #b0000001111010011011100001110110010010111101010011000)))
(assert (= r (fp #b0 #b11111100100 #b0010011100110000001011100011010010000011001000011000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
