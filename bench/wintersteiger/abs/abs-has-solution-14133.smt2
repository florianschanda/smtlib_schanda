(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1728901234321635893564916841569356620311737060546875p934 {+ 778627895465131 934 (1.70323e+281)}
; 1.1728901234321635893564916841569356620311737060546875p934 | == 1.1728901234321635893564916841569356620311737060546875p934
; [HW: 1.1728901234321635893564916841569356620311737060546875p934] 

; mpf : + 778627895465131 934
; mpfd: + 778627895465131 934 (1.70323e+281) class: Pos. norm. non-zero
; hwf : + 778627895465131 934 (1.70323e+281) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100101 #b0010110001000010100001101111000111110001010010101011)))
(assert (= r (fp #b0 #b11110100101 #b0010110001000010100001101111000111110001010010101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
