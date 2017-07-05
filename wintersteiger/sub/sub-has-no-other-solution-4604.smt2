(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6536276983923077210647534229792654514312744140625p578 {+ 2943677458918632 578 (1.63597e+174)}
; Y = 1.15114158284826384459620385314337909221649169921875p61 {+ 680681176195628 61 (2.65435e+018)}
; 1.6536276983923077210647534229792654514312744140625p578 - 1.15114158284826384459620385314337909221649169921875p61 == 1.6536276983923074990201484979479573667049407958984375p578
; [HW: 1.6536276983923074990201484979479573667049407958984375p578] 

; mpf : + 2943677458918631 578
; mpfd: + 2943677458918631 578 (1.63597e+174) class: Pos. norm. non-zero
; hwf : + 2943677458918631 578 (1.63597e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000001 #b1010011101010100001001010001010001011010110011101000)))
(assert (= y (fp #b0 #b10000111100 #b0010011010110001001101101111101101100110001000101100)))
(assert (= r (fp #b0 #b11001000001 #b1010011101010100001001010001010001011010110011100111)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
