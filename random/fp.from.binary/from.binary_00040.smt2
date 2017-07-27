(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b01000100 #b11010111001100111101000)))
;; x should be Float32(0x226B99E8 [Rational(1930045, 604462909807314587353088), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00100010011010111001100111101000

(assert (not (= y #b00100010011010111001100111101000)))
(check-sat)
(exit)
