(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01010011100000001100010)))
;; x should be Float32(0xCA29C062 [Rational(-5562417, 2), -2781208.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00473564)))
;; y should be Float32(0x00473564 [Rational(1166681, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b11100110011111001100011)))
;; z should be Float32(0xCAF33E63 [Rational(-15941219, 2), -7970609.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b1 #b10010101 #b11100110011111001100100)))
(check-sat)
(exit)
