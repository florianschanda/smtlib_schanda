(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8844A485)))
;; x should be Float32(0x8844A485 [Rational(-12887173, 21778071482940061661655974875633165533184), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A8E7995)))
;; y should be Float32(0x4A8E7995 [Rational(9337237, 2), 4668618.500000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (= result ((_ to_fp 8 24) #x8844A485)))
(check-sat)
(exit)
