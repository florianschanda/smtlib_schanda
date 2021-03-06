(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x40FD0B37)))
;; x should be Float32(0x40FD0B37 [Rational(16583479, 2097152), 7.907619])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010100 #b01100010001001101100010)))
;; y should be Float32(0xCA311362 [Rational(-5802417, 2), -2901208.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x800D0A82)))
;; z should be Float32(0x800D0A82 [Rational(-427329, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCBAF07EA))))
(check-sat)
(exit)
