(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11001010010110100001101)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01000001011010000110100)))
;; y should be Float32(0x8020B434 [Rational(-535821, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
