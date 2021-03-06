(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b01110011111010001100011001011101001101110110101110101000101000101111001110010010000111010010101000100101100011000001011100010111))
;; x should be 154069855688917869217449753743532496663

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)
