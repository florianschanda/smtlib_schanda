(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8021B0F4)))
;; x should be Float32(0x8021B0F4 [Rational(-551997, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b00000101001101110111011)))
;; z should be Float32(0x4A829BBB [Rational(8559547, 2), 4279773.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b10010101 #b00000101001101110111011)))
(check-sat)
(exit)
