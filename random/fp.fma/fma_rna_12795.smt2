(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11001001 #b00001011000111110010101)))
;; x should be Float32(0xE4858F95 [Rational(-19710105100178591580160), -19710105100178591580160.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x002B2CCB)))
;; y should be Float32(0x002B2CCB [Rational(2829515, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00111101 #b00111110111111000001111)))
;; z should be Float32(0x1E9F7E0F [Rational(10452495, 618970019642690137449562112), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xA4B429ED))))
(check-sat)
(exit)
