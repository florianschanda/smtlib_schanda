(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6400298464107241347420540478196926414966583251953125p402 {+ 2882438177801333 402 (1.69399e+121)}
; 1.6400298464107241347420540478196926414966583251953125p402 S == 1.280636500499155783217020143638364970684051513671875p201
; [HW: 1.280636500499155783217020143638364970684051513671875p201] 

; mpf : + 1263874439074558 201
; mpfd: + 1263874439074558 201 (4.11581e+060) class: Pos. norm. non-zero
; hwf : + 1263874439074558 201 (4.11581e+060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010001 #b1010001111011000111111101111101011001100010001110101)))
(assert (= r (fp #b0 #b10011001000 #b0100011111010111110010110010111110110101001011111110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
