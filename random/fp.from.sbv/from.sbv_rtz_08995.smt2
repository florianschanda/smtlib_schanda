(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01110001000111000001111010010011000010101011100000100011110010111000001111110010110001011010101011001011101111011010001010101101))
;; x should be 150348767957879929444745765334097437357

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7EE2383D)))
(check-sat)
(exit)
