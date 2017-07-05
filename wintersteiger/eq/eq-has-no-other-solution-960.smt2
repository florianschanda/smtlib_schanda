(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8691464036642317925185352578409947454929351806640625p-288 {+ 3914287419672641 -288 (3.75841e-087)}
; Y = 1.9648296283806987450049064136692322790622711181640625p547 {+ 4345206354851329 547 (9.05175e+164)}
; 1.8691464036642317925185352578409947454929351806640625p-288 = 1.9648296283806987450049064136692322790622711181640625p547 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011111 #b1101111010000000011000001111001100101100100001000001)))
(assert (= y (fp #b0 #b11000100010 #b1111011011111111000100110001010000011011011000000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
