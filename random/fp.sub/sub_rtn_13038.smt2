(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B781C4)))
;; x should be Float32(0x49B781C4 [Rational(3006577, 2), 1503288.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x48687CE0)))
;; y should be Float32(0x48687CE0 [Rational(476135, 2), 238067.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result ((_ to_fp 8 24) #x499A7228)))
(check-sat)
(exit)
