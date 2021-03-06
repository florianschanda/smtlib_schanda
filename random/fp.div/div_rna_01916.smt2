(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x804A75AD)))
;; x should be Float32(0x804A75AD [Rational(-4879789, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xE2C065DE)))
;; y should be Float32(0xE2C065DE [Rational(-1774557583297447198720), -1774557583297447198720.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
