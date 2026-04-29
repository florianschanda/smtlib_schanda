(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.783614707556408607302955715567804872989654541015625p94 {+ 3529086904953082 94 (3.53281e+028)}
; 1.783614707556408607302955715567804872989654541015625p94 S == 1.3355203882967898731948253043810836970806121826171875p47
; [HW: 1.3355203882967898731948253043810836970806121826171875p47] 

; mpf : + 1511049495708627 47
; mpfd: + 1511049495708627 47 (1.87958e+014) class: Pos. norm. non-zero
; hwf : + 1511049495708627 47 (1.87958e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011101 #b1100100010011010111110010011010110011110100011111010)))
(assert (= r (fp #b0 #b10000101110 #b0101010111100100101010100000011011100000001111010011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
