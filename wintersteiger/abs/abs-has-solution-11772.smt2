(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.58246037046619658639201588812284171581268310546875p282 {- 2623168307389644 282 (-1.22968e+085)}
; -1.58246037046619658639201588812284171581268310546875p282 | == 1.58246037046619658639201588812284171581268310546875p282
; [HW: 1.58246037046619658639201588812284171581268310546875p282] 

; mpf : + 2623168307389644 282
; mpfd: + 2623168307389644 282 (1.22968e+085) class: Pos. norm. non-zero
; hwf : + 2623168307389644 282 (1.22968e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011001 #b1001010100011100000111110111001001011110010011001100)))
(assert (= r (fp #b0 #b10100011001 #b1001010100011100000111110111001001011110010011001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
