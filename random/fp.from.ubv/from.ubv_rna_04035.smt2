(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00101010101100011101000101100100100001011010101100111110001110000111010110110011000001101111000001010111110111111010100000101011))
;; x should be 56750859354719072227375890639573985323

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
