(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4820765984194468334322891678311862051486968994140625p-1007 {+ 2171079989005857 -1007 (1.0806e-303)}
; 1.4820765984194468334322891678311862051486968994140625p-1007 | == 1.4820765984194468334322891678311862051486968994140625p-1007
; [HW: 1.4820765984194468334322891678311862051486968994140625p-1007] 

; mpf : + 2171079989005857 -1007
; mpfd: + 2171079989005857 -1007 (1.0806e-303) class: Pos. norm. non-zero
; hwf : + 2171079989005857 -1007 (1.0806e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010000 #b0111101101101001010111110011100001100000111000100001)))
(assert (= r (fp #b0 #b00000010000 #b0111101101101001010111110011100001100000111000100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
