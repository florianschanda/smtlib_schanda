(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00110000010101101100001)))
;; x should be Float32(0x00182B61 [Rational(1583969, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01101011 #b01000001000111010001100)))
;; y should be Float32(0xB5A08E8C [Rational(-2630563, 2199023255552), -0.000001])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00526B1D)))
;; z should be Float32(0x00526B1D [Rational(5401373, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b00000000 #b10100100110101100011100))))
(check-sat)
(exit)
