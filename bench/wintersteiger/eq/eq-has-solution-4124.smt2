(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4019313004586073656554390254314057528972625732421875p-441 {- 1810137654973923 -441 (-2.46887e-133)}
; Y = 1.489354648179739282198852379224263131618499755859375p-216 {+ 2203857411194294 -216 (1.41423e-065)}
; -1.4019313004586073656554390254314057528972625732421875p-441 = 1.489354648179739282198852379224263131618499755859375p-216 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001000110 #b0110011011100100111110000011111010110101010111100011)))
(assert (= y (fp #b0 #b01100100111 #b0111110101000110010110001010001000010011110110110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
