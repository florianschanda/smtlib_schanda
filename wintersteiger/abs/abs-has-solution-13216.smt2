(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7154980344080446030829989467747509479522705078125p547 {+ 3222316681144392 547 (7.90311e+164)}
; 1.7154980344080446030829989467747509479522705078125p547 | == 1.7154980344080446030829989467747509479522705078125p547
; [HW: 1.7154980344080446030829989467747509479522705078125p547] 

; mpf : + 3222316681144392 547
; mpfd: + 3222316681144392 547 (7.90311e+164) class: Pos. norm. non-zero
; hwf : + 3222316681144392 547 (7.90311e+164) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100010 #b1011011100101010111000010001001000100010100001001000)))
(assert (= r (fp #b0 #b11000100010 #b1011011100101010111000010001001000100010100001001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
