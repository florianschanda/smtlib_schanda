(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.513340953576089997767439854214899241924285888671875p-1022 {+ 2311882127239294 -1023 (1.14222e-308)}
; Y = 1.119286696953360138451216698740608990192413330078125p-345 {+ 537219523949410 -345 (1.56168e-104)}
; 0.513340953576089997767439854214899241924285888671875p-1022 - 1.119286696953360138451216698740608990192413330078125p-345 == -1.1192866969533599164066117737093009054660797119140625p-345
; [HW: -1.1192866969533599164066117737093009054660797119140625p-345] 

; mpf : - 537219523949409 -345
; mpfd: - 537219523949409 -345 (-1.56168e-104) class: Neg. norm. non-zero
; hwf : - 537219523949409 -345 (-1.56168e-104) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1000001101101010010100000000111101001110100001111110)))
(assert (= y (fp #b0 #b01010100110 #b0001111010001001100100101010111001000011001101100010)))
(assert (= r (fp #b1 #b01010100110 #b0001111010001001100100101010111001000011001101100001)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
