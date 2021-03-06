(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0011011111101101001011011101010110101101111010011101100010100001))
;; x should be 4029927637335529633

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
