(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b00111000011001011011010000110001))
;; x should be 946189361

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
