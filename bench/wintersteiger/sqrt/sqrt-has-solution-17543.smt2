(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1554402835111747815943772366154007613658905029296875p-293 {+ 700040802899291 -293 (7.26037e-089)}
; 1.1554402835111747815943772366154007613658905029296875p-293 S == 1.5201580730379158357123969835811294615268707275390625p-147
; [HW: 1.5201580730379158357123969835811294615268707275390625p-147] 

; mpf : + 2342583703907313 -147
; mpfd: + 2342583703907313 -147 (8.52078e-045) class: Pos. norm. non-zero
; hwf : + 2342583703907313 -147 (8.52078e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011010 #b0010011111001010111011110011011000101001010101011011)))
(assert (= r (fp #b0 #b01101101100 #b1000010100101001000101000101100001110010101111110001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
