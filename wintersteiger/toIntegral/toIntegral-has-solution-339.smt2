(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0473600478863425156106359281693585216999053955078125 228 {+ 213290694013181 228 (4.51788e+068)}
; 1.0473600478863425156106359281693585216999053955078125 228 I == 1.0473600478863425156106359281693585216999053955078125 228
; [HW: 1.0473600478863425156106359281693585216999053955078125 228] 

; mpf : + 213290694013181 228
; mpfd: + 213290694013181 228 (4.51788e+068) class: Pos. norm. non-zero
; hwf : + 213290694013181 228 (4.51788e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100011 #b0000110000011111110010011100000011001111000011111101)))
(assert (= r (fp #b0 #b10011100011 #b0000110000011111110010011100000011001111000011111101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
