(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 85070591730234615865843651857942052865

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (fp.geq r (fp #b0 #b10001111101 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
