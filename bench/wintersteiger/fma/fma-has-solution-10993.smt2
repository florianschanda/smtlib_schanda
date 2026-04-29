(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.047162068182700522811501286923885345458984375p966 {+ 212399072693632 966 (6.53115e+290)}
; Y = -1.7190893752726115195628153742291033267974853515625p450 {- 3238490642523816 450 (-4.998e+135)}
; Z = -1.350586423707657690584937881794758141040802001953125p259 {- 1578900887170962 259 (-1.2511e+078)}
; 1.047162068182700522811501286923885345458984375p966 x -1.7190893752726115195628153742291033267974853515625p450 -1.350586423707657690584937881794758141040802001953125p259 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000101 #b0000110000010010110100000011010001110100110110000000)))
(assert (= y (fp #b1 #b10111000001 #b1011100000010110001111011100010110110010011010101000)))
(assert (= z (fp #b1 #b10100000010 #b0101100111000000000010000010100000111110111110010010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
