(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5837992445128816765276269507012329995632171630859375p315 {+ 2629198060047391 315 (1.05718e+095)}
; 1.5837992445128816765276269507012329995632171630859375p315 S == 1.7797748422274553004029939984320662915706634521484375p157
; [HW: 1.7797748422274553004029939984320662915706634521484375p157] 

; mpf : + 3511793688888455 157
; mpfd: + 3511793688888455 157 (3.25143e+047) class: Pos. norm. non-zero
; hwf : + 3511793688888455 157 (3.25143e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111010 #b1001010101110011110111100000011010011100110000011111)))
(assert (= r (fp #b0 #b10010011100 #b1100011110011111010100101111010110011100010010000111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
