(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b00000100110011000101101100100010001100111010000101011000010111010011010111101100001111001000110001001101011111101110100001001110))
;; x should be 6377988951291015960361299210309396558

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
