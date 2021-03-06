(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b10101000000100101011110010101011111001100010000110000011001101110010011011011011110110101010000110101011000001011111101011101100))
;; x should be -116874775573375627006643141263239021844

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (fp.geq r ((_ to_fp 8 24) #xFEAFDA87)))
(check-sat)
(exit)
