(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01110110000001111010000011011111011001001111010110011001010011001011111101001100000110001100101000110101101101011011010011101000))
;; x should be 156888512465292053490013001002054431976

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7EEC0F42)))
(check-sat)
(exit)
