(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACC1CB5)))
;; x should be Float32(0xCACC1CB5 [Rational(-13376693, 2), -6688346.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xEF0682F4)))
;; y should be Float32(0xEF0682F4 [Rational(-41629303930031961195264606208), -41629303930031961195264606208.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F800000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
