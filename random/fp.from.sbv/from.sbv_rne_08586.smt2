(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1101000111101100111110010101101111110011101110110011101101100111))
;; x should be -3320004651952424089

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (fp.geq r ((_ to_fp 11 53) #xC3C7098352062262)))
(check-sat)
(exit)
