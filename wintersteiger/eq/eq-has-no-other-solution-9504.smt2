(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8250212128562157687383660231716930866241455078125p-762 {+ 3715565226792008 -762 (7.52335e-230)}
; Y = -1.141497740889970469169156785937957465648651123046875p-346 {- 637249173145838 -346 (-7.96336e-105)}
; 1.8250212128562157687383660231716930866241455078125p-762 = -1.141497740889970469169156785937957465648651123046875p-346 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000101 #b1101001100110100100101110001011110111001010001001000)))
(assert (= y (fp #b1 #b01010100101 #b0010010000111001001100100010100110010100100011101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
