(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.528269241651521337388430765713565051555633544921875p372 {- 2379113159853086 372 (-1.47014e+112)}
; Y = -1.101872530857418208682929616770707070827484130859375p-1017 {- 458793092008758 -1017 (-7.84559e-307)}
; -1.528269241651521337388430765713565051555633544921875p372 = -1.101872530857418208682929616770707070827484130859375p-1017 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110011 #b1000011100111100101001110010110001100000010000011110)))
(assert (= y (fp #b1 #b00000000110 #b0001101000010100010100010111010001100100101100110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
