(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b10111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be -85070591730234615865843651857942052867

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #xFE800000)))
(check-sat)
(exit)
