(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F7FFFFF)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x20CC1BFA)))
;; y should be Float32(0x20CC1BFA [Rational(6688253, 19342813113834066795298816), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8040127E)))
;; z should be Float32(0x8040127E [Rational(-2099519, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x60CC1BF9))))
(check-sat)
(exit)
