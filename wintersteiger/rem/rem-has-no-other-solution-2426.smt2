(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9917993585487561158942071415367536246776580810546875p-1010 {- 4466667221586475 -1010 (-1.81531e-304)}
; Y = -1.0683799249792940155856513229082338511943817138671875p-852 {- 307955804656371 -852 (-3.5577e-257)}
; -1.9917993585487561158942071415367536246776580810546875p-1010 % -1.0683799249792940155856513229082338511943817138671875p-852 == -1.9917993585487561158942071415367536246776580810546875p-1010
; [HW: -1.9917993585487561158942071415367536246776580810546875p-1010] 

; mpf : - 4466667221586475 -1010
; mpfd: - 4466667221586475 -1010 (-1.81531e-304) class: Neg. norm. non-zero
; hwf : - 4466667221586475 -1010 (-1.81531e-304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001101 #b1111110111100110100100000001000100101001001000101011)))
(assert (= y (fp #b1 #b00010101011 #b0001000110000001010110001100010101111101001011110011)))
(assert (= r (fp #b1 #b00000001101 #xfde690112922b)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
