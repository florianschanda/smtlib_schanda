(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC99F0F74)))
;; x should be Float32(0xC99F0F74 [Rational(-2606045, 2), -1303022.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC7DB4B40)))
;; y should be Float32(0xC7DB4B40 [Rational(-224557, 2), -112278.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xC9915AC0)))
(check-sat)
(exit)
