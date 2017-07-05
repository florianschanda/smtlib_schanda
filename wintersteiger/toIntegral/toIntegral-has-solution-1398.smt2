(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2189507486540940295327573039685375988483428955078125 609 {+ 986066510051069 609 (2.58972e+183)}
; 1.2189507486540940295327573039685375988483428955078125 609 I == 1.2189507486540940295327573039685375988483428955078125 609
; [HW: 1.2189507486540940295327573039685375988483428955078125 609] 

; mpf : + 986066510051069 609
; mpfd: + 986066510051069 609 (2.58972e+183) class: Pos. norm. non-zero
; hwf : + 986066510051069 609 (2.58972e+183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100000 #b0011100000001101001010000000000011100111011011111101)))
(assert (= r (fp #b0 #b11001100000 #b0011100000001101001010000000000011100111011011111101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
