(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.863688186993692763593344352557323873043060302734375p934 {+ 3889705797109094 934 (2.70638e+281)}
; 1.863688186993692763593344352557323873043060302734375p934 | == 1.863688186993692763593344352557323873043060302734375p934
; [HW: 1.863688186993692763593344352557323873043060302734375p934] 

; mpf : + 3889705797109094 934
; mpfd: + 3889705797109094 934 (2.70638e+281) class: Pos. norm. non-zero
; hwf : + 3889705797109094 934 (2.70638e+281) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100101 #b1101110100011010101010110100010100010100010101100110)))
(assert (= r (fp #b0 #b11110100101 #b1101110100011010101010110100010100010100010101100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
