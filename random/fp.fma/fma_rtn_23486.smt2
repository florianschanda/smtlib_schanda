(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01110010111011010011010)))
;; x should be Float32(0x0039769A [Rational(1882957, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b11011011011100011100101)))
;; y should be Float32(0x4AEDB8E5 [Rational(15579365, 2), 7789682.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AADA5B5)))
;; z should be Float32(0x4AADA5B5 [Rational(11380149, 2), 5690074.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4AADA5B5))))
(check-sat)
(exit)
