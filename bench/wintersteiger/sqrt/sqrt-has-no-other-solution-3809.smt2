(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7726536163475525853527869912795722484588623046875p943 {+ 3479722538669304 943 (1.31798e+284)}
; 1.7726536163475525853527869912795722484588623046875p943 S == 1.882898625177443108213992672972381114959716796875p471
; [HW: 1.882898625177443108213992672972381114959716796875p471] 

; mpf : + 3976221919355056 471
; mpfd: + 3976221919355056 471 (1.14803e+142) class: Pos. norm. non-zero
; hwf : + 3976221919355056 471 (1.14803e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101110 #b1100010111001100101000001001110101011001010011111000)))
(assert (= r (fp #b0 #b10111010110 #b1110001000000101101001001111000011010010000010110000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
