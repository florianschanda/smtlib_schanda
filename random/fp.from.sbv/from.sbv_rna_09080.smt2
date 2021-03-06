(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01101011000100001010000100010101011011100001111011000111100111001100100000101110001110110010000001111001101101101011110000001111))
;; x should be 142313739464540717859236283023380364303

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
