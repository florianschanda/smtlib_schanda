(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8122290120310904359968162680161185562610626220703125p-330 {+ 3657954275922725 -330 (8.28542e-100)}
; Y = 1.4947601472933407240617498246137984097003936767578125p-425 {+ 2228201614988061 -425 (1.72514e-128)}
; 1.8122290120310904359968162680161185562610626220703125p-330 * 1.4947601472933407240617498246137984097003936767578125p-425 == 1.3544238524764289355317714580451138317584991455078125p-754
; [HW: 1.3544238524764289355317714580451138317584991455078125p-754] 

; mpf : + 1596183129944061 -754
; mpfd: + 1596183129944061 -754 (1.42935e-227) class: Pos. norm. non-zero
; hwf : + 1596183129944061 -754 (1.42935e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110101 #b1100111111101110001111011001001110001001001100100101)))
(assert (= y (fp #b0 #b01001010110 #b0111111010101000100110011101101111111101001100011101)))
(assert (= r (fp #b0 #b00100001101 #b0101101010111011100001011000011101001110111111111101)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
