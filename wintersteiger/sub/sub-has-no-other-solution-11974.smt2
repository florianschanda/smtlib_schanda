(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4586903914787388014673297220724634826183319091796875p756 {- 2065757876142075 756 (-5.52891e+227)}
; Y = 1.6515175758565003860667275148443877696990966796875p-1018 {+ 2934174311852664 -1018 (5.8796e-307)}
; -1.4586903914787388014673297220724634826183319091796875p756 - 1.6515175758565003860667275148443877696990966796875p-1018 == -1.4586903914787388014673297220724634826183319091796875p756
; [HW: -1.4586903914787388014673297220724634826183319091796875p756] 

; mpf : - 2065757876142075 756
; mpfd: - 2065757876142075 756 (-5.52891e+227) class: Neg. norm. non-zero
; hwf : - 2065757876142075 756 (-5.52891e+227) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110011 #b0111010101101100101110111100011001100011111111111011)))
(assert (= y (fp #b0 #b00000000101 #b1010011011001001110110110001100100010010101001111000)))
(assert (= r (fp #b1 #b11011110011 #b0111010101101100101110111100011001100011111111111011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
