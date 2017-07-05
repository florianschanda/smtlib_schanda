(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0606800596470329356435513545875437557697296142578125p599 {- 273278694015197 599 (-2.20065e+180)}
; Y = 1.2790578751978458615923273100634105503559112548828125p819 {+ 1256764942755821 819 (4.47154e+246)}
; -1.0606800596470329356435513545875437557697296142578125p599 = 1.2790578751978458615923273100634105503559112548828125p819 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010110 #b0000111110001000101110100111011110110100000011011101)))
(assert (= y (fp #b0 #b11100110010 #b0100011101110000010101100011111110101010011111101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
