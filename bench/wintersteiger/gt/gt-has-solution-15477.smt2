(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1930448873200578674413918633945286273956298828125p476 {- 869396882600392 476 (-2.32774e+143)}
; Y = -1.135447407341803938152224873192608356475830078125p-470 {- 610000893232848 -470 (-3.72451e-142)}
; -1.1930448873200578674413918633945286273956298828125p476 > -1.135447407341803938152224873192608356475830078125p-470 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011011 #b0011000101101011011000111100010110110011000111001000)))
(assert (= y (fp #b1 #b01000101001 #b0010001010101100101011100110100011011100011011010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
