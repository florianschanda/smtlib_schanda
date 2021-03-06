(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1110110001001001000101110110111011100110101000010100100101011010))
;; x should be 17026165631334041946

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43ED8922EDDCD429)))
(check-sat)
(exit)
