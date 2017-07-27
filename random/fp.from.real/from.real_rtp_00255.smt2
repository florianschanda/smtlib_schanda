(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x006FFCBD)))
;; x should be Float32(0x006FFCBD [Rational(7339197, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 4091738875907068168005273669165681885345238431368701.0 397858589127829313724305798517456672080364920637878173952371181514527597610026700426444800.0))))
;; w should be Float32(0x006FFCBD [Rational(7339197, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= x w))
(check-sat)
(exit)
